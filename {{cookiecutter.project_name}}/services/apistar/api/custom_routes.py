from apistar import Route

def custom_route(name: str=None):
    """Print 42"""
    if name is None:
        name = "anonymous"
    return "Hello {name}, 42 is the answer".format(**locals())

routes = [
    Route("/", method="GET", handler=custom_route),
]
