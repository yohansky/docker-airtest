package main

import "github.com/gofiber/fiber/v2"

// Setting air
// air init di vscode
// ganti di .air.toml, ganti poll = true
// [build]
// poll = true
// install air via docker
func main() {
	app := fiber.New()

	app.Get("/halo", func(c *fiber.Ctx) error {
		return c.SendString("Hello, World!as")
	})

	app.Listen(":3000")
}
