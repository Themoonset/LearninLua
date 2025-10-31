function fileName()
	local name = os.execute("find . -type f -iname '*.lua' -print")
	return name
end

fileName()
