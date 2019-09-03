BUNDLE_PATH?=vendor/bundle

bundle:
	mkdir -p ${BUNDLE_PATH}
	bundle install --path=${BUNDLE_PATH}

zip_it:
	zip -9 /tmp/lamba.zip .

clean:
	rm -rf ${BUNDLE_PATH}
