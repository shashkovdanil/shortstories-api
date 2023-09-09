console.log('Hello World!')
const server = Bun.serve({
  port: 5000,
  fetch() {
    console.log('Hellot')
    return new Response('Hello World!')
  },
})

console.log(`Listening on port ${server.port}`)
console.log('sdsa  фывфывd')
