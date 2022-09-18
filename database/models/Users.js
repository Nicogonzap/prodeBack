const { DataTypes, Model } = require("sequelize");
const { sequelize } = require(".");



module.exports = (sequelize, DataTypes) => {
    let alias = 'Users';
    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        userTypeId:{
            type: DataTypes.INTEGER,
            allowNull: false
        },
        userName:{
            type: DataTypes.STRING,
            allowNull: false
        },
        email: {
            type: DataTypes.STRING,
            allowNull: false
        },
        pass: {
            type: DataTypes.STRING,
            allowNull: false
        },
        active: {
            type: DataTypes.INTEGER,
            allowNull: false
        }
    }
    let config = {
        tableName: 'users',
        timestamps: false
    }
    const User = sequelize.define(alias, cols, config);
    
        return User

}