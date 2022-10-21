import response from './../response.js'
import GameClass from './../class/GameClass.js'
import request from 'request';

export const showGame = async(req, res) => {
    try {
        let show_game = 
            await new GameClass()
            .show()

        return response(res, 200, true, 'List game found!', show_game)
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}

export const getGame = async(req, res) => {
    const { game_id } = req.params

    try {
        let get_game = 
            await new GameClass()
            .setGameId(game_id)
            .get()

        return response(res, 200, true, 'Game found!', get_game)
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}

export const getGameSkillset = async(req, res) => {
    const { game_id } = req.params

    try {
        let get_game = 
            await new GameClass()
            .setGameId(game_id)
            .getSkillset()

        return response(res, 200, true, 'Game skillset found!', get_game)
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}

export const getGameStep = async(req, res) => {
    const { game_id } = req.params

    try {
        let get_game = 
            await new GameClass()
            .setGameId(game_id)
            .getStep()

        return response(res, 200, true, 'Game step found!', get_game)
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}

export const getGameEquipment = async(req, res) => {
    const { game_id } = req.params

    try {
        let get_game = 
            await new GameClass()
            .setGameId(game_id)
            .getEquipment()

        return response(res, 200, true, 'Game step found!', get_game)
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}