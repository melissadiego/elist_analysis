# Data Audit & Change Log

**Live Data File:** https://docs.google.com/spreadsheets/d/1OJ2zPolwgpmcqC4AoxJf23PVDp6iuWEwtm-OoHo2FDc/edit?usp=sharing

| Step | Analyst | Data / Column | Action Taken | Logic / Reason | # Affected Rows | Before vs. After Example |
| :---: | :--- | :--- | :--- | :--- | :---: | :--- |
| **LOG-01** | M.Diego | `orders_data_raw` / `USER_ID` | Standardized values | Full numerical IDs without scientific notation or the `+` sign | 101,129 | `6.25E+04` → `62488` |
| **LOG-02** | M.Diego | `orders_data_raw` / `PRODUCT_NAME` | Standardized values | Extra `""` in name | 197 | `27in"" 4k gaming monitor` → `27in 4k gaming monitor` |
| **LOG-03** | M.Diego | `orders_data_raw` / `PRODUCT_NAME` | Standardized values | Capitalize each word / Title Case | 27 | `bose soundsport headphones` → `Bose SoundSport Headphones` |
| **LOG-04** | M.Diego | `USER_ID` column header | Header Formatting | Freeze 1st column / Bold for readability when scrolling down | 1 | `USER_ID` → **`USER_ID`** |
| **LOG-05** | M.Diego | `orders_data_raw` / `PRODUCT_ID` | Column Alignment | Left align (Not a quantitative measure) | 101,129 | N/A |
| **LOG-06** | M.Diego | `orders_data_raw` / `USD_PRICE` | Currency Format | Add USA currency symbol | 101,129 | `434.05` → `$434.05` |
| **LOG-07** | M.Diego | `orders_data_raw` / `LOCAL_PRICE` | Number Format | Standardize numerical formatting with commas | 101,129 | `48000` → `48,000.00` |
| **LOG-08** | M.Diego | `orders_data_raw` / `LOYALTY_PROGRAM` | Column Alignment | Center align for readability | 101,129 | N/A |
| **LOG-09** | M.Diego | `orders_data_raw` / `COUNTRY_CODE` | Column Alignment | Center align for readability | 101,129 | N/A |
| **LOG-10** | M.Diego | `country_lookup_raw` / `REGION` | Fill Missing Data | Prevent nulls / assign region | 1 | `null (BJ)` → `EMEA` |
| **LOG-11** | M.Diego | `country_lookup_raw` / `REGION` | Fill Missing Data | Prevent nulls / assign region | 1 | `null (BM)` → `LATAM` |
| **LOG-12** | M.Diego | `country_lookup_raw` / `REGION` | Standardized values | Align to coding convention | 1 | `x` → `NA` |
| **LOG-13** | M.Diego | `country_lookup_raw` / `REGION` | Standardized values | Align to coding convention | 1 | `North America` → `NA` |
