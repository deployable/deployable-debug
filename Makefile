
build: lib
	bundle exec gem build deployable-debug.gemspec
	mv deployable-debug-[0-9]*.gem pkg/

