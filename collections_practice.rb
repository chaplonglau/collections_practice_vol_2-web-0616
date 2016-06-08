# your code goes here
require 'pry'

def begins_with_r(arr)
  arr.all?{|x|x[0]=="r"}
end

def contain_a(arr)
  arr.select{|x|x.include?("a")}
end

def first_wa(arr)
  arr.find{|x|x[0..1]=="wa"}
end

def remove_non_strings(arr)
  arr.select{|x|x.class==String}
end

# expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]))
# to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])

#[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements(arr)
  
  arr3=[]

  result=arr.each do |x|
    arr2={}
    arr2[:name]=x.values[0]
    arr2[:count]=arr.count(x)
    arr3 << arr2
  end
  arr3.uniq!
end

#KEYS =[{:first_name=>"blake"}, {:first_name=>"ashley"}]
#DATA =[{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
#      "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
#WHAT WE WANT[{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]
def merge_data(keys, data)
  arr=[]
  keys.each_with_index do |x,index|
    arr << keys[index].merge(data[0][keys[index].values[0]])
  end
  arr
end

# [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]
def find_cool(arr)
  
  arr.select {|coolhash| coolhash[:temperature]=="cool" }

end


#THEY WANT {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}





def organize_schools(location)
  location.each_with_object({}) do |x,arr2| 
    if (arr2.has_key?(x[1].values.first)==false)
       arr2[x[1].values.first]=[]
    end
    arr2[x[1].values.first] << x[0]   
  end
end

=begin
def organize_schools(location)
  arr2= {}
  location.each do |x| 
    if (arr2.has_key?(x[1].values.first)==false)
       arr2[x[1].values.first]=[]
    end
    arr2[x[1].values.first] << x[0]   
  end
  arr2
end
=end

















