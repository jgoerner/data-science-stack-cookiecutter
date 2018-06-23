from apistar import App, Include

import custom_routes

routes = [
    Include("/api", name="api", routes=custom_routes.routes),
]

app = App(routes)

if __name__ == "__main__":
    app.serve("127.0.0.1", 9090, debug=True)
