const express = require('express');
const redis = require('redis');
const process = require('process');

const app = express();
const client = redis.createClient({
    host: 'redis-server', // specified in the docker-compose.yml
    port: 6379            // default redis port
});
// Initialize the number of visits
client.set('visits', 0);

// Increase and store the number of visits
app.get('/', (req, res) => {
    client.get('visits', (err, visits) => {
        let total_visits = parseInt(visits) + 1;
        res.send('Number of visits is ' + visits);
        client.set('visits', parseInt(visits) + 1);

        // Aborting... docker will restart the container as specified in the yml file 
        if (total_visits > 5) {
            process.exit(0);
            // process.exit(1);
        }
    });
});

app.listen(8081, () => {
    console.log('Listening on port 8081');
})