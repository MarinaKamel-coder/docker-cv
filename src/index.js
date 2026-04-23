const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();
const PORT = 3000;


app.get('/api/cv', (req, res) => {
    const data = fs.readFileSync(path.join(__dirname, '../data.json'), 'utf8');
    res.json(JSON.parse(data));
});


app.use(express.static(path.join(__dirname, '../public')));

app.listen(PORT, () => {
    console.log(`Serveur démarré sur http://localhost:${PORT}`);
});