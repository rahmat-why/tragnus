// import sequelize 
import { Sequelize } from "sequelize";
// import connection 
import database from "../config/database.js";

export const User = database.define('users', {
  id: {
    primaryKey: true,
    type: Sequelize.STRING,
  },
  name: Sequelize.STRING,
  telp: Sequelize.STRING,
  password: Sequelize.STRING,
  token: Sequelize.STRING
});

export const Game = database.define('games', {
  game_id: {
    primaryKey: true,
    type: Sequelize.STRING,
  },
  name: Sequelize.STRING,
  image: Sequelize.STRING,
  video: Sequelize.STRING
});

export const GameStep = database.define('game_steps', {
  step_id: {
    primaryKey: true,
    type: Sequelize.STRING,
  },
  game_id: Sequelize.STRING,
  title: Sequelize.STRING,
  description: Sequelize.STRING
});

export const GameSkillset = database.define('game_skillsets', {
  skillset_id: {
    primaryKey: true,
    type: Sequelize.STRING,
  },
  game_id: Sequelize.STRING,
  ketangkasan: Sequelize.STRING,
  kreativitas: Sequelize.STRING,
  kerjasama: Sequelize.STRING
});

export const GameEquipment = database.define('game_equipments', {
  equipment_id: {
    primaryKey: true,
    type: Sequelize.STRING,
  },
  game_id: Sequelize.STRING,
  ketangkasan: Sequelize.STRING,
  kreativitas: Sequelize.STRING,
  kerjasama: Sequelize.STRING
});