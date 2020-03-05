
public aspect TraceAspectJensen {

	pointcut methodToTrace(): execution(String getName());
	
	before(): methodToTrace() {
		String info = thisJoinPointStaticPart.getSignature() + ", " +
				thisJoinPointStaticPart.getSourceLocation().getLine();
		System.out.println("\t-->" + info);
	}
	
	after(): methodToTrace() {
		String info = thisJoinPointStaticPart.getSourceLocation().getFileName();
		thisJoinPointStaticPart.getSourceLocation().getLine();
		System.out.println("\t<--" + info);
	}
		
	
}
