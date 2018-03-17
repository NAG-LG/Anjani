#include <glib.h>


typedef struct stats{
	int bar[10];
}ReviewStat;
struct ReviewData{
	unsigned long UID;
	string Category;
	string ProductName;
	string Qstn;
	string Url;
	string Coustomer;
	ReviewStat RVS;
};

class UIManager{


public:
	
	~UIManager();
	
	//	setters
	bool registerUser();
	bool upVote(ReviewID);
	bool downVote(ReviewID);
	bool writeReview();
	
	
	//	getters
	//ReviewData& getMostRecentReviews();
	ReviewData& getReviews();
	ReviewData& getReview(string category);
	ReviewData& getTopReview();
	
	static UIManager& getInstance();
	ReviewStat & getStats(ReviewID &);
	
	
private:
	
	UIManager();
	statistics stats;
	GMainLoop *mLoopdata = nullptr;
	vector<ReviewID> IDList;
	unsigned long CurrentUID;
};

