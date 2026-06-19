.PHONY: proto

proto:
	@mkdir -p ./gen/go/grpcssov1
	@protoc --proto_path=proto \
		--go_out=./gen/go/grpcssov1 \
		--go_opt=paths=source_relative \
		--go-grpc_out=./gen/go/grpcssov1 \
		--go-grpc_opt=paths=source_relative \
		proto/*.proto
