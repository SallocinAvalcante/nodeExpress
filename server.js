const express = require('express');
const app = express();

// Serve arquivos estáticos da pasta 'public'
app.use(express.static('public'));

// Render define a porta automaticamente
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Servidor rodando: http://localhost:${PORT}`);
});
