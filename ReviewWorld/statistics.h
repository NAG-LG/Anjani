struct Record{
	
	
};

class statistics{
	
	statistics();
	ReviewStat& calculateUpdatedValues();
public:

	~statistics();
	
	statistics& getInstace();
	
	ReviewStat& getStats(ReviewId);
	bool updateDataBase(ReviewId);

private:
	
	
};