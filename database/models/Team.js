const { DataTypes, Model } = require("sequelize");
const { sequelize } = require(".");
const Group = require ('./Group')

module.exports = (sequelize, DataTypes) => {
    let alias = 'Teams';
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
        flag:{type: DataTypes.STRING},
        points:{type: DataTypes.INTEGER},
        goalsFor:{type: DataTypes.INTEGER},
        goalsAgainst:{type: DataTypes.INTEGER},
        shortname:{type: DataTypes.STRING},
        qualOcta:{type: DataTypes.INTEGER},
        qualSemi:{type: DataTypes.INTEGER},
        qualFinal:{type: DataTypes.INTEGER},
        finalPosition:{type: DataTypes.INTEGER},
        fifaRank:{type: DataTypes.INTEGER},
        groupId:{
            type: DataTypes.INTEGER,
            references: {
                // This is a reference to another model
                model: Group,
                // This is the column name of the referenced model
                key: 'id'
            }
        }
    }
    let config = {
        tableName: 'teams',
        timestamps: false
    }
    const Team = sequelize.define(alias, cols, config);

    return Team

}