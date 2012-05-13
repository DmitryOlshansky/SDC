module d.parser.base;

import d.ast.declaration;

import d.parser.declaration;

import sdc.tokenstream;
import sdc.location;
import sdc.parser.base : match;

auto parseModule(TokenStream tstream) {
	match(tstream, TokenType.Begin);
	if(tstream.peek.type == TokenType.Module) {
		tstream.get();
		parseModuleDeclaration(tstream);
	}
	
	Declaration[] declarations;
	while(tstream.peek.type != TokenType.End) {
		declarations ~= parseDeclaration(tstream);
	}
	
	tstream.get();
	
	return null;
}

auto parseModuleDeclaration(TokenStream tstream) {
	match(tstream, TokenType.Identifier);
	while(tstream.peek.type == TokenType.Dot) {
		tstream.get();
		match(tstream, TokenType.Identifier);
	}
	
	match(tstream, TokenType.Semicolon);
	
	return null;
}

