#bar short
#define vector
x=c(1,3,423,56,78)
#ploting vector
#defining vector
x=c(7,12,45,23,32)
#simple bar chart horizontal
#ploting vector
barplot(x,xlab="audience",
        ylab = "count",col = "green",
        col.axis="black",
        col.lab="red",
        horiz =TRUE)
#simple bar chart vertical
#ploting vector
barplot(x,xlab="audience",
        ylab = "count",col = "green",
        col.axis="black",
        col.lab="red",
        horiz =FALSE)
#data value on bar
#create data for chart
# Single Bar Plot
a <- c(12, 23, 34, 35)
b <- c("Ali", "Bilal", "Ahmad", "Hassan")
#simple bar chart with text feature
barplot(a, names.arg = b, main = "Bar Chart Example", xlab = "Names", ylab = "Values", col = heat.colors(8))
#for multiple bar chart and component bar chart
# Create the matrix of the values for Component Bar Chart
values <- matrix(c(2, 8, 9, 7, 6, 5, 4, 10, 12, 15), nrow = 3, ncol = 5, byrow = TRUE)
colnames(values)<- c("Jan", "Feb", "Mar", "Apr", "May")

# Component Bar Chart
barplot(values, main = "Total Revenue", xlab = "Month", ylab = "Revenue",
        col = c("green", "blue", "orange"),
        legend = rownames(values),
        beside = FALSE)
legend("topleft",colnames(values),fill=colors())
# Multiple Bar Chart with custom colors for regions and months
colors<-c("green", "pink", "red")
months<-c("Mar", "Apr", "May", "Jun", "Jul", "Nov")
regions<-c("East", "West", "North")

# Adjust matrix dimensions to fit regions and months
values_multiple <- matrix(c(2, 5, 8, 7, 10, 12,
                            4, 7, 9, 6, 9, 11,
                            3, 6, 10, 5, 8, 12), nrow = 3, ncol = 6, byrow = TRUE)

# Plot Multiple Bar Chart
barplot(values_multiple, main = "Total Revenue by Region", xlab = "Month", ylab = "Revenue",
        col = colors, beside = TRUE,
        legend = regions,
        names.arg = months)
#legend("bottomleft",label,fill=colors())
#data value on bar
#create data for bar chart
a=c(12,23,34,35)
b=c("ali","bilal","ahmab","hassan")
barplot(a,b)
#create the matrix of the values
values<-matrix(c(2,8,9,7,6,5,4,
                  30,39,30,50,60,70,31),nrow=2,ncol=7,byrow=2)
#create bar chart (componant bar chart)
barplot(values,main="total. revenue",xlab="Month",
        ylab = "Revenue",col = "green",
        col.axis="black",
        beside =FALSE )
values <- matrix(c(2, 8, 9, 7, 6, 5, 4,
                   30, 39, 30, 50, 60, 70, 31,
                   23,34,45,56,34,45,21),
                 nrow = 3, ncol = 7, byrow = TRUE)

barplot(values, 
        main = "Total Revenue", 
        xlab = "Month", 
        ylab = "Revenue", 
        col = "orange",  # Use a single color definition
        col.axis = "black", 
        beside = FALSE)

#multiple bar chart #just beside true
colors<-c("green","pink","red")
months<-c("mar","apr","may","jun","jul","nov")
region<-C("east","west","north")
barplot(values,main="total.revenue",xlab="Month",
        ylab = "revenue",col = colours,
        col.axis="black",
        col.lab="red",
        beside = TRUE)
#histograph
#defining vector
x=c(12,23,45,67,78,56,23,35,14,45,67)
hist(x,main = "histograph",xlab = "value",col.lab="darkgreen",col.main="red",
     col ="red" )
#box plot