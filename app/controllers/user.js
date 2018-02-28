const userModel = require('../models/userModel');

module.exports = {
    getMe,
    getUserById,
    getfarmById,
    getFarmList,
    getFarmReview,
    putMe
    // getBuyers
}

async function getMe(ctx){
    let id = ctx.state.user.id;
    let users = await userModel.findUserById(id);
    ctx.body = users[0];
}

async function getUserById(ctx){
    let id = ctx.params.id;
	let users = await userModel.findUserById(id);
    ctx.body = users[0];
}

async function getfarmById(ctx){
    let id = ctx.params.id;
	let farm = await userModel.findUserById(id);
    ctx.body = farm[0];
}

async function getFarmList(ctx){
	let farms = await userModel.findAllFarms();
	ctx.body = farms;
}

async function getFarmReview(ctx){
    
}

async function putMe(ctx){
    
}

// async function getBuyers(ctx){
// 	let buyers = await userModel.getAll('buyers');
// 	ctx.body = buyers;
// }