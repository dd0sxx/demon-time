const fs = require('fs').promises;

const path = '../../Downloads/metadata';

async function run () {
    const files = await fs.readdir(path);
    for (let i = 0; i < 5000; i++){
        let json = await fs.readFile(`${path}/${i}.json`);
        let data = JSON.parse(json);
        data.name = `Demon Time #${i}`;
        data.image = `ipfs://QmZv913jKtYaCdvbnzudZh2Kzfi4SrQrcDxaHWTgFCEbsr/${i}.webp`
        delete data.compiler;
        delete data.properties;
        delete data.external_url;
        let newJSON = JSON.stringify(data);
        console.log(i)
        await fs.writeFile(`${path}/${i}.json`, newJSON)
    }


}

run()