import {
    Game, GameSkillset, GameStep, GameEquipment
} from './../models/Model.js'

const game_class = class GameClass {
    constructor() {
        this.game_id = null
    }

    setGameId(game_id) {
        this.game_id = game_id
        return this
    }
    
    async get() {
        const game = await Game.findOne({
            where: {
                game_id: this.game_id
            },
            attributes: ["game_id", "name", "image", "video"]
        })

        return game
    }

    async show() {
        const game = await Game.findAll({
            attributes: ["game_id", "name", "image", "video"]
        })

        return game
    }

    async getSkillset() {
        const game_skillset = await GameSkillset.findOne({
            where: {
                game_id: this.game_id
            },
            attributes: ["game_id", "ketangkasan", "kreativitas", "kerjasama"]
        })

        return game_skillset
    }

    async getStep() {
        const game_step = await GameStep.findAll({
            where: {
                game_id: this.game_id
            },
            attributes: ["game_id", "title", "description"]
        })

        return game_step
    }

    async getEquipment() {
        const game_step = await GameEquipment.findAll({
            where: {
                game_id: this.game_id
            },
            attributes: ["game_id", "description"]
        })

        return game_step
    }
}

export default game_class