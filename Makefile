.PHONY: get gen run clean

## Install dependencies
get:
	flutter pub get

## Run code generation (auto_route)
gen:
	dart run build_runner build --delete-conflicting-outputs

## Install deps + generate code + run app
run: get gen
	flutter run

## Clean build artifacts
clean:
	flutter clean
	dart run build_runner clean
