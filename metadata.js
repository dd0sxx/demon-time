const fs = require('fs').promises;

const path = '../../Downloads/metadata';

async function run () {
    const files = await fs.readdir(path);
    for (let i = 1; i < files.length; i++){
        let json = await fs.readFile(`${path}/${i}.json`);
        let data = JSON.parse(json);
        data.name = `Demon Time #${i}`;
        data.image = `ipfs://QmXWDXUXQpaBhD2wsG64YTSYgfEukBgoLE8LHoqU7kGX8V/${i}.webp`
        delete data.compiler;
        delete data.properties;
        delete data.external_url;
        let newJSON = JSON.stringify(data);
        await fs.writeFile(`${path}/${i}.json`, newJSON)
    }


}

run()