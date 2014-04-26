describe DateHelper  do
  context "two dates that are the same" do
    before :each do
      date = Date.parse("2014-01-15")
      @result = Date.months_between(date,date)
    end
    
    it "should return 1 month" do
      expect(@result).to have(1).items
    end
    
    it "month should be first day of month" do 
      expect(@result[0]).to be == Date.parse("2014-01-01")
    end 
  end
  
  context "two dates in same month" do
    before :each do
      @earlier_date = Date.parse("2014-01-01")
      @later_date = Date.parse("2014-01-15")
    end
    context "earlier date first" do 
      before :each do
        @result = Date.months_between(@earlier_date,@later_date)
      end
      it "should return 1 month" do
        expect(@result).to have(1).items
      end
      
      it "month should be first day of month" do 
        expect(@result[0]).to be == Date.parse("2014-01-01")
      end
    end
    context "later date first" do 
      before :each do
        @result = Date.months_between(@later_date,@earlier_date)
      end
      it "should return 1 month" do
        expect(@result).to have(1).items
      end
      
      it "month should be first day of month" do 
        expect(@result[0]).to be == Date.parse("2014-01-01")
      end
    end
  end
  
  context "two dates in different months" do
    before :each do
      @earlier_date = Date.parse("2013-08-03")
      @later_date = Date.parse("2014-01-15")
    end
    context "earlier date first" do 
      before :each do
        @result = Date.months_between(@earlier_date,@later_date)
      end
      it "should return 6 months" do
        expect(@result).to have(6).items
      end
      
      it "month should be first day of month and in ascending order" do 
        expect(@result[0]).to be == Date.parse("2013-08-01")
        expect(@result[1]).to be == Date.parse("2013-09-01")
        expect(@result[2]).to be == Date.parse("2013-10-01")
        expect(@result[3]).to be == Date.parse("2013-11-01")
        expect(@result[4]).to be == Date.parse("2013-12-01")
        expect(@result[5]).to be == Date.parse("2014-01-01")
      end
    end
    context "later date first" do 
      before :each do
        @result = Date.months_between(@later_date,@earlier_date)
      end
      it "should return 6 months" do
        expect(@result).to have(6).items
      end
      
      it "month should be first day of month and in ascending order" do 
        expect(@result[0]).to be == Date.parse("2013-08-01")
        expect(@result[1]).to be == Date.parse("2013-09-01")
        expect(@result[2]).to be == Date.parse("2013-10-01")
        expect(@result[3]).to be == Date.parse("2013-11-01")
        expect(@result[4]).to be == Date.parse("2013-12-01")
        expect(@result[5]).to be == Date.parse("2014-01-01")
      end
    end
  end

end