SELECT formatQuery('select 1;');
SELECT formatQuery('select 1');
SELECT formatQuery('SELECT 1;');
SELECT formatQuery('SELECT 1');
SELECT formatQuery('select 1;') == formatQuery('SeLecT 1');
SELECT formatQuery('INSERT INTO tab VALUES (\'\') (\'test\')');
SELECT formatQuery('CREATE TABLE default.no_prop_table(`some_column` UInt64) ENGINE = MergeTree ORDER BY tuple() SETTINGS index_granularity = 8192');
SELECT formatQuery('EXPLAIN SYNTAX SELECT CAST(1 AS INT), CEIL(1), CEILING(1), CHAR(49), CHAR_LENGTH(\'1\'), CHARACTER_LENGTH(\'1\'), COALESCE(1), CONCAT(\'1\', \'1\'), CORR(1, 1), COS(1), COUNT(1), COVAR_POP(1, 1), COVAR_SAMP(1, 1), DATABASE(), SCHEMA(), DATEDIFF(\'DAY\', toDate(\'2020-10-24\'), toDate(\'2019-10-24\')), EXP(1), FLATTEN([[1]]), FLOOR(1), FQDN(), GREATEST(1), IF(1, 1, 1), IFNULL(1, 1), LCASE(\'A\'), LEAST(1), LENGTH(\'1\'), LN(1), LOCATE(\'1\', \'1\'), LOG(1), LOG10(1), LOG2(1), LOWER(\'A\'), MAX(1), MID(\'123\', 1, 1), MIN(1), MOD(1, 1), NOT(1), NOW(), NOW64(), NULLIF(1, 1), PI(), POSITION(\'123\', \'2\'), POW(1, 1), POWER(1, 1), RAND(), REPLACE(\'1\', \'1\', \'2\'), REVERSE(\'123\'), ROUND(1), SIN(1), SQRT(1), STDDEV_POP(1), STDDEV_SAMP(1), SUBSTR(\'123\', 2), SUBSTRING(\'123\', 2), SUM(1), TAN(1), TANH(1), TRUNC(1), TRUNCATE(1), UCASE(\'A\'), UPPER(\'A\'), USER(), VAR_POP(1), VAR_SAMP(1), WEEK(toDate(\'2020-10-24\')), YEARWEEK(toDate(\'2020-10-24\')) format TSVRaw;');
SELECT normalizedQueryHash(formatQuery('select 1')) = normalizedQueryHash(formatQuery('SELECT 1'));
SELECT formatQuery('SEECTwrong'); -- { serverError SYNTAX_ERROR }
SELECT 'formatQuerySingleLine';
SELECT formatQuerySingleLine('select 1;');
SELECT formatQuerySingleLine('select 1');
SELECT formatQuerySingleLine('SELECT 1;');
SELECT formatQuerySingleLine('SELECT 1');
SELECT formatQuerySingleLine('select 1;') == formatQuerySingleLine('SeLecT 1');
SELECT formatQuerySingleLine('INSERT INTO tab VALUES (\'\') (\'test\')');
SELECT formatQuerySingleLine('CREATE TABLE default.no_prop_table(`some_column` UInt64) ENGINE = MergeTree ORDER BY tuple() SETTINGS index_granularity = 8192');
SELECT formatQuerySingleLine('EXPLAIN SYNTAX SELECT CAST(1 AS INT), CEIL(1), CEILING(1), CHAR(49), CHAR_LENGTH(\'1\'), CHARACTER_LENGTH(\'1\'), COALESCE(1), CONCAT(\'1\', \'1\'), CORR(1, 1), COS(1), COUNT(1), COVAR_POP(1, 1), COVAR_SAMP(1, 1), DATABASE(), SCHEMA(), DATEDIFF(\'DAY\', toDate(\'2020-10-24\'), toDate(\'2019-10-24\')), EXP(1), FLATTEN([[1]]), FLOOR(1), FQDN(), GREATEST(1), IF(1, 1, 1), IFNULL(1, 1), LCASE(\'A\'), LEAST(1), LENGTH(\'1\'), LN(1), LOCATE(\'1\', \'1\'), LOG(1), LOG10(1), LOG2(1), LOWER(\'A\'), MAX(1), MID(\'123\', 1, 1), MIN(1), MOD(1, 1), NOT(1), NOW(), NOW64(), NULLIF(1, 1), PI(), POSITION(\'123\', \'2\'), POW(1, 1), POWER(1, 1), RAND(), REPLACE(\'1\', \'1\', \'2\'), REVERSE(\'123\'), ROUND(1), SIN(1), SQRT(1), STDDEV_POP(1), STDDEV_SAMP(1), SUBSTR(\'123\', 2), SUBSTRING(\'123\', 2), SUM(1), TAN(1), TANH(1), TRUNC(1), TRUNCATE(1), UCASE(\'A\'), UPPER(\'A\'), USER(), VAR_POP(1), VAR_SAMP(1), WEEK(toDate(\'2020-10-24\')), YEARWEEK(toDate(\'2020-10-24\')) format TSVRaw;');
SELECT normalizedQueryHash(formatQuerySingleLine('select 1')) = normalizedQueryHash(formatQuerySingleLine('SELECT 1'));
SELECT formatQuerySingleLine('SEECTwrong'); -- { serverError SYNTAX_ERROR }
