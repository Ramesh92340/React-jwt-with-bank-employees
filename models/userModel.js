// const express = require('express');
const pool = require('../config/userConfig.js');
const valid = require('../middelWare/userValidation');
const bcrypt = require('bcryptjs');
class UserModel 
{
    async registration(user) 
    {
        const { id, name, mobile, gender, mail, password } = user;
        const hashedPassword = await bcrypt.hash(password,10);
        const ismail = valid.validateEmail(mail);
        const ispassword = valid.validatePassword(hashedPassword);
        const ismobile = valid.validatePhoneNumber(mobile);
        const isname = valid.validatename(name);
        const isgender = valid.validateGender(gender);
        if (id) {    
            if(name){
                if (mobile) {
                    if (gender) {
                        if (mail) {
                            if (password) {
                                if (isname) {
                                    if (ismail) {
                                        if (ispassword) {
                                            if (ismobile) {
                                                if (isgender) {
                                                    const query = 'INSERT INTO bank (id, name, mobile, gender, mail, password) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *';
                                                    const values = [id, name, mobile, gender, mail, hashedPassword];
                                                    const { rows } = await pool.query(query, values);
                                                    return rows[0];
                                                } else {
                                                    return {error:"invalid gender"};
                                                }
                                            } 
                                            else {
                                                return {error:"invalid mobile number"};
                                            }
                                        }
                                        else{
                                            return { error:"invalid password" };
                                        }
                                    }
                                    else{
                                        return { error:"invalid email" };
                                    }
                                } else {
                                    return { error:"invalid name" };
                                }
                            } else {
                                return {error:"required password"};
                            }
                        } else {
                            return {error:"required mail"};
                        }
                    } else {
                        return {error:"required gender"};
                    }
                } else {
                    return {error:"required mobile"};
                }
            }else{
                return {error:"required name"};
            }
        } else {
            return {error:"required id"};
        }
    } 
    async logIn(user) 
    {  
        
        const { name,password } = user;
       
        
        // const ispassword = valid.validatePassword(password);
     
            if (password) {
               
                    // if (ispassword) {
                       
                       
                        const query = 'SELECT * FROM bank where name=$1';
                        const values = [name];
                        const { rows } = await pool.query(query,values);
                        return rows[0];
                        // if (rows) 
                        // {
                        //      return rows[0];
                           
                        // } 
                        // else 
                        // {
                        //     return null;
                        // }
                    } else {
                        return { error:"invalid password" };
                    }
                // } else {
                    // return { error:"invalid password" };
                // }
      
       
    }
    async profile(name) {
        const names = name;
        try {
            const query = 'SELECT * FROM bank WHERE name = $1';
            const values = [names];
            const result = await pool.query(query, values);
            return result.rows[0]; // Assuming you have a 'users' table
        } catch (error) {
            throw error;
        }
    }
}
module.exports = new UserModel();