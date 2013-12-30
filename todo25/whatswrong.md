http://sewingandembroiderywarehouse.com/embtrb.htm
there is something wrong with this page.
using your web inspector identify what is wrong.
1. as algorithmically as possible, explain why this error causes this visual effect.
2. what are the other things wrong with this page? why do you think they are wrong?
3. when was this page made? how? tell how you figured it out.
----

1. the page is basically made up of nested h3 tags and size styles. it's creating an effect where each h3 tag is bigger than the last. reason being is, i believe, because the 1.17em that is applied to the h3 each time is basically applied an extra time each 'level deeper' the h3 tags go. so that's why, the further down the tag is, the bigger it is. it's getting 1.17 em applied to it multiple times.

2. there is also a huge space between the last h3 tag and the footer, perhaps because h3 tags provide some space below themselves--a line-height of sorts--and this is the accumulation of all the h3 tags' space.. also the general structure should be reworked. not so much nesting h3s. or none...

3. the page was probably made around 1996. i think this because the top of the html code says "<!DOCTYPE html PUBLIC... HTML 3.2...>" and according to http://www.w3.org/TR/REC-html32 HTML version 3.2 "aims to capture recommended pratice as of early '96." so, probably 1996 era.
