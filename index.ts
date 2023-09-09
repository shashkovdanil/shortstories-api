const server = Bun.serve({
  port: 4000,
  fetch() {
    return new Response('Hello World!')
  },
})

console.log(`Listening on port ${server.port}`)
