"""Validate kubernetes namespace hook."""
import falcon
import json


class NamespaceValidatingHook:
    """Namespace validating hook"""

    def on_get(self, _req, resp):
        """Get request"""

        resp.body = json.dumps({}, ensure_ascii=False)
        resp.status = falcon.HTTP_200


api = application = falcon.API()
api.add_route('/', NamespaceValidatingHook())
