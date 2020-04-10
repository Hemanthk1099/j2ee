function getGrade(marks)
    {	
	if(marks>100 || marks<0){
        alert("Invalid marks");
    }
        if(marks>=90)
            return  "10";
        else if(marks<90 && marks>=80)
            return "9";
        else if(marks<80 && marks>=70)
            return "8";
        else if(marks<70 && marks>=60)
            return "7";
        else if(marks<60 && marks>=50)
            return "6";
        else if(marks<50 && marks>=40)
			return "5";
		else 
			return 0;
    }