all:
	elm-make src/Main.elm --output=elm.js
proto:
	mkdir ./tmp/
	protoc --elm_out=./tmp/ ./vendor/studio_proto3/studio.proto
	mv ./tmp/Vendor/Studio_proto3/Studio.elm ./src/studio/Proto.elm
	rm -rf ./tmp/
	sed -i '' -e "1s/Vendor\.Studio_proto3\.Studio/Studio\.Proto/" ./src/studio/Proto.elm
