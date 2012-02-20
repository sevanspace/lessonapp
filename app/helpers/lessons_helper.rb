module LessonsHelper
  
   def maxrow
     rows = Lesson.maximum("row")
     return rows
   end
   
  # def makerow(rownum)
     
  #   respond_with(@rowlessons = Lesson.where("row = ?", params[:rows => rownum]))
 #  end  
   
   def cell(rownum, topicid)
      return Lesson.where(:row => rownum, :topic_id => topicid)
   end
      
      
end
