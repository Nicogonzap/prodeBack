const { DataTypes, Model } = require("sequelize");
const { sequelize } = require(".");

module.exports = (sequelize, DataTypes) => {
    let alias = 'Groups';
    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        name:{
            type: DataTypes.STRING,
            allowNull: false
        },
    }
    let config = {
        tableName: 'groups',
        timestamps: false
    }
    const Group = sequelize.define(alias, cols, config);

    return Group

}