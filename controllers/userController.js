const userModel = require('../models/userModel');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

const SECRET_KEY = 'your_SECRET_KEY'
class UserController 
{
    async registration(req,res)
    {
        const user = req.body;
        try
        {
            const users = await userModel.registration(user);
            res.status(400).json({users})
        }
        catch (error)
        {
            console.error('Error registering user:', error);
            res.status(500).json({message:"internal server error"});
        }
    }
    

 
    
    async logIn(req, res) {
      try {
        const { name, password } = req.body;
    
        // Validate request data
        if (!name || !password) {
          return res.status(400).json({ message: 'Invalid request. Username and password are required' });
        }
    
        // Find the user in the user model
        const foundUser = await userModel.logIn({ name, password });
    
        if (!foundUser) {
          return res.status(404).json({ status: 0, error: 'User not found' });
        }
    
        // Check if the provided password matches the hashed password in the database
        const isPasswordValid = await bcrypt.compare(password, foundUser.password);
    
        if (!isPasswordValid) {
          return res.status(401).json({ message: 'Invalid credentials' });
        }
    
        // Generate a JWT token with the user's name as payload
        const token = jwt.sign({ name: foundUser.name }, SECRET_KEY, { expiresIn: '24h' });
    
        // Return a success response with the JWT token
        res.status(200).json({ status: 1, message: 'Login successful', token });
      } catch (error) {
        console.error('Error logging in:', error);
        res.status(500).json({ error: 'Internal Server Error' });
      }
    }
    

 

    
    async profile(req,res){
        const token = req.headers['authorization'];
        if (!token) {
            return res.status(401).json({ message: 'Authorization header missing' });
        }
        try {
            // Verify the token
            const decoded = jwt.verify(token, SECRET_KEY);
            // console.log(decoded);return;
            const name = decoded.name;
            // console.log(name);return;
        
            // Retrieve user information from the PostgreSQL database
            const user = await userModel.profile(name);
            // console.log(user);return
            if (!user) {
              return res.status(404).json({ message: 'User not found' });
            }
        
            res.status(200).json({user});
          } catch (error) {
            console.error('Error fetching profile:', error);
            res.status(401).json({ message: 'Invalid token' });
          }

    }
}

module.exports = new UserController();