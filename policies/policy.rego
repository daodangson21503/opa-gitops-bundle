package istio.authz

import future.keywords.if

default allow = false

allow if {
    input.attributes.request.http.headers["x-user"] == "admin"
}
