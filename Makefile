BUNDLE_PATH?=vendor/bundle
FUNCTION_ZIP?=/tmp/function.zip
FUNCTION_NAME?=simple-ruby

bundle:
	mkdir -p ${BUNDLE_PATH}
	bundle install --path=${BUNDLE_PATH}

zip_it:
	zip -9 ${FUNCTION_ZIP} .

clean:
	rm -rf ${BUNDLE_PATH}

deploy: bundle zip_it
	aws lambda update-function-code --function-name ${FUNCTION_NAME} --zip-file fileb://function.zip
