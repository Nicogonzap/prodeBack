const express = require ('express');
const cors = require('cors');
const app = express();
const cookieParser = require('cookie-parser');
//const methodOverride =  require('method-override'); --> Todavía no lo uso
const session = require('express-session')
const port = 3001

app.use(cors());
// Routers
const mainRouter = require('../src/routes/main.js')
const adminRouter = require ('../src/routes/admin.js')
const userRouter = require ('../src/routes/user.js')

//JSON
app.use(express.json());
app.use(express.urlencoded({extended:false}));


// Cookies
app.use(cookieParser());


// Session
app.use(session({
    secret: 'LaClaveDelProdeJaJi',
    resave: false,
    saveUninitialized: false,
}))
// Main App
app.listen (port,() => console.log(`Server running in port ${port}`))
app.use('/', mainRouter);
app.use('/admin', adminRouter);
app.use('/users', userRouter);