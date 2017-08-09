# Created a temporary table for actor and revenue, now 
# let's use that table. 

SELECT actorR.actor_id, actorR.fName, actorR.lName, SUM(amount)
FROM actorR
GROUP BY 1
ORDER BY 4 desc
;
# Conclusion: Gina Degeneres generates the most revenue out 
# of any film actor. 