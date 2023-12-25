{ lib
, buildRubyGem
, ruby_3_2
, gitMinimal
}:

buildRubyGem rec {
	gemName = "ruby-colorspace";
	version = "0";

	src = ./.;

	ruby = ruby_3_2;

	dontBuild = false;

	preBuild = ''
		git init .
		git add -A
	'';

	nativeBuildInputs = [
		gitMinimal
	];

	meta = {
		maintainers = [ lib.maintainers.anna328p ];
	};
}
