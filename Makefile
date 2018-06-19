.PHONY: dev-test

dev-test:
	gem build sogou-translate.gemspec && gem install pkg/sogou-translate-0.1.0.gem  && sogou translate
