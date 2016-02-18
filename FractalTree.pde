private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	
	line(320,480,320,380);   
	drawBranches(320,380,(int)(Math.random()*50)+100,3*PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here 
	
	double angle1=angle+branchAngle;
	double angle2=angle-branchAngle;
	double endX1=(double)(branchLength*Math.cos(angle1) + x);
	double endY1=(double)(branchLength*Math.sin(angle1) + y);
	double endX2=(double)(branchLength*Math.sin(angle2) + x);
	double endY2=(double)(branchLength*Math.sin(angle2) + y);
	stroke(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));   
	line((float)x,(float)y,(float)endX1,(float)endY1);
	stroke(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));   
	line((float)x,(float)y,(float)endX2,(float)endY2);

	branchLength=branchLength*fractionLength;
	if(branchLength>smallestBranch){
		drawBranches((int)(endX1),(int)(endY1),branchLength,angle1);
		drawBranches((int)(endX2),(int)(endY2),branchLength,angle2);
	}else{

	}  
} 
