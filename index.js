const execa = require('execa');
const path = require('path')
const shellPath = path.resolve(__dirname, './degit.sh')
const argv = process.argv.slice(2)

execa.shell(`${shellPath} ${argv[0]||''} ${argv[1]||''}`, {
    stdio: 'inherit',
  })
