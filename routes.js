import { Router } from 'express'
import response from './response.js'
import * as AuthController from './controllers/AuthController.js'
import * as GameController from './controllers/GameController.js'

const router = Router()

router.post('/auth/register', AuthController.register)
router.post('/auth/verify-otp', AuthController.verifyOtp)
router.post('/auth/login', AuthController.login)

router.get('/game/show-game', GameController.showGame)
router.get('/game/get-game/:game_id', GameController.getGame)
router.get('/game/get-game-skillset/:game_id', GameController.getGameSkillset)
router.get('/game/get-game-step/:game_id', GameController.getGameStep)
router.get('/game/get-game-equipment/:game_id', GameController.getGameEquipment)

router.all('*', (req, res) => {
    response(res, 404, false, 'The requested url cannot be found.')
})

export default router