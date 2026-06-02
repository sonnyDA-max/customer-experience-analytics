
-- ==========================================
-- CUSTOMER EXPERIENCE ANALYTICS PLATFORM
-- BIGQUERY SQL ANALYSIS
-- ==========================================

-- ==========================================
-- SECTION 1: DATA VALIDATION
-- ==========================================

SELECT COUNT(*) AS total_records
FROM `customer_experience.train`;

-- ==========================================
-- SECTION 2: CUSTOMER SATISFACTION DISTRIBUTION
-- ==========================================

SELECT
    satisfaction,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(),
        2
    ) AS percentage
FROM `customer_experience.train`
GROUP BY satisfaction
ORDER BY customer_count DESC;

-- Observation:
-- A majority of customers fall into the Neutral or Dissatisfied category.
-- Approximately 56.7% of passengers are not fully satisfied with their experience.

-- Business Interpretation:
-- Customer satisfaction represents a significant improvement opportunity.
-- Understanding the drivers of dissatisfaction should be prioritized.

-- ==========================================
-- SECTION 3: SERVICE DRIVER ANALYSIS
-- ==========================================

SELECT
    satisfaction,
    ROUND(AVG(Online_boarding), 2) AS online_boarding,
    ROUND(AVG(Inflight_entertainment), 2) AS inflight_entertainment,
    ROUND(AVG(Seat_comfort), 2) AS seat_comfort,
    ROUND(AVG(Food_and_drink), 2) AS food_and_drink,
    ROUND(AVG(Inflight_wifi_service), 2) AS inflight_wifi_service
FROM `customer_experience.train`
GROUP BY satisfaction;

-- Observation:
-- Satisfied customers consistently report higher ratings across all service dimensions.

-- Key Findings:
-- Online Boarding shows one of the largest rating differences between satisfaction groups.
-- Inflight Entertainment and Seat Comfort also demonstrate strong separation.
-- Food and Drink exhibits a smaller difference relative to other service dimensions.

-- Business Interpretation:
-- Customer satisfaction appears to be driven more strongly by operational and onboard experience factors than by catering services alone.

-- Recommendation:
-- Improvement initiatives should prioritize Online Boarding, Inflight Entertainment, and Seat Comfort to maximize customer satisfaction impact.


-- ==========================================
-- SECTION 4: CUSTOMER SEGMENT ANALYSIS
-- ==========================================

SELECT
    Customer_Type,
    satisfaction,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(PARTITION BY Customer_Type),
        2
    ) AS percentage
FROM `customer_experience.train`
GROUP BY Customer_Type, satisfaction
ORDER BY Customer_Type, percentage DESC;

-- Observation:
-- Loyal customers report substantially higher satisfaction rates than disloyal customers.

-- Key Findings:
-- Loyal Customers: ~48% satisfied
-- Disloyal Customers: ~24% satisfied

-- Business Interpretation:
-- Customer loyalty is strongly associated with positive satisfaction outcomes.

-- Recommendation:
-- Investigate factors contributing to dissatisfaction among disloyal customers and strengthen retention initiatives.

-- ==========================================
-- SECTION 5: TRAVEL CLASS ANALYSIS
-- ==========================================

SELECT
    Class,
    satisfaction,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(PARTITION BY Class),
        2
    ) AS percentage
FROM `customer_experience.train`
GROUP BY Class, satisfaction
ORDER BY Class, percentage DESC;

-- Observation:
-- Satisfaction levels vary dramatically across travel classes.

-- Key Findings:
-- Business Class: ~69% satisfied
-- Eco Plus: ~25% satisfied
-- Eco: ~19% satisfied

-- Business Interpretation:
-- Travel class exhibits one of the strongest relationships with customer satisfaction.

-- Recommendation:
-- Analyze the premium customer experience and identify opportunities to adapt successful features to Economy segments.