import response from './../response.js'
import AuthClass from './../class/AuthClass.js'
import request from 'request';

export const register = async(req, res) => {
    const { name, telp } = req.body

    try {
        let is_exist_user = 
            await new AuthClass()
            .setTelp(telp)
            .isExistUser()

        if (is_exist_user) {
            return response(res, 422, false, 'Warning! account registered!', {})
        }

        let send_otp = 
            await new AuthClass()
            .setTelp(telp)
            .sendOtp()

        let store_user = 
            await new AuthClass()
            .setPassword(send_otp)
            .setName(name)
            .setTelp(telp)
            .storeUser()

        return response(res, 200, true, 'OTP sent successfully via Whatsapp!', {})
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}

export const login = async(req, res) => {
    const { telp } = req.body

    try {
        let send_otp = 
            await new AuthClass()
            .setTelp(telp)
            .sendOtp()
            
        let password = 
            new AuthClass()
            .setPassword(send_otp)
            .password

        let update_user = 
            await new AuthClass()
            .setTelp(telp)
            .updateUser({password: password})

        return response(res, 200, true, 'Login success! OTP sent successfully via Whatsapp!', {})
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}

export const verifyOtp = async(req, res) => {
    const { telp, otp } = req.body

    try {
        let verify_otp = 
            await new AuthClass()
            .setPassword(otp)
            .setTelp(telp)
            .verifyPassword()

        if (!verify_otp) {
            return response(res, 422, false, "OTP Invalid")
        }

        var generate_token = 
            await new AuthClass()
            .setTelp(telp)
            .generateToken()

        let update_token = 
            await new AuthClass()
            .setTelp(telp)
            .updateUser({token: generate_token.token})

        return response(res, 200, true, 'OTP verified!', generate_token)
    } catch (err) {
        return response(res, 401, true, err.message, {})
    }
}