-- using char_length() is much faster than just length()

select tweet_id from Tweets where length(content) > 15;
select tweet_id from Tweets where char_length(content) > 15;
