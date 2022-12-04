redis.call("set", "name", "abc")
rawset(_G, "name", redis.call("get", "name"))
return name
