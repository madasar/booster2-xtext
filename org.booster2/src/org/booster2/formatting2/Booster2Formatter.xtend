/*
 * generated by Xtext 2.10.0
 */
package org.booster2.formatting2

import com.google.inject.Inject
import org.booster2.booster2.Attribute
import org.booster2.booster2.Constraint
import org.booster2.booster2.Method
import org.booster2.booster2.Set
import org.booster2.services.Booster2GrammarAccess
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument

class Booster2Formatter extends AbstractFormatter2 {
	
	@Inject extension Booster2GrammarAccess

	def dispatch void format(org.booster2.booster2.System system, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Set sets : system.getSets()) {
			sets.format;
		}
		for (org.booster2.booster2.Class classes : system.getClasses()) {
			classes.format;
		}
	}

	def dispatch void format(org.booster2.booster2.Class _class, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Attribute attributes : _class.getAttributes()) {
			attributes.format;
		}
		for (Constraint invariants : _class.getInvariants()) {
			invariants.format;
		}
		for (Method methods : _class.getMethods()) {
			methods.format;
		}
	}
	
	// TODO: implement for Attribute, TypeDecl, Method, Not, Constraint, Relation, Exists, Forall, Head, Tail, Card, Expression, Path, PathValue, SetExtension, IdPath
}