
start:
	@ERL_LIBS=_build/dev/lib/ iex --name ${NODE_NAME} \
		--erl "+K true" \
		--erl "-config config/sys.config" \
		--erl "-proto_dist epmdless_proto" \
		--erl "-start_epmd false" \
		--erl "-epmd_module epmdless_client" \
		-S mix