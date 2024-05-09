const express = require('express');

const app = express();
const bodyParser = require('body-parser');
const userRoutes = require('./routes/userRoute');
app.use(bodyParser.json());
app.use('/', userRoutes);
const PORT = process.env.PORT || 3009;
app.listen(PORT, () => {
console.log(`Server is running on port ${PORT}`);
});