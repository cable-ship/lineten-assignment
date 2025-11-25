import express from 'express';
import fetch from 'node-fetch';

const app = express();
const PORT = process.env.PORT || 8080;

// Root route
app.get('/', (req, res) => {
  res.send('hello');
});

// Return server's outbound IP
app.get('/ip', async (req, res) => {
  try {
    const response = await fetch('https://api.ipify.org?format=json');
    const data = await response.json();

    console.log(`Public IP: ${data.ip}`);
    res.json({ ip: data.ip });
  } catch (err) {
    console.error('Error fetching IP:', err);
    res.status(500).send('Failed to fetch public IP');
  }
});

// Health check
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok' });
});

// Catch-all
app.get('*', (req, res) => {
  res.send('hello');
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
