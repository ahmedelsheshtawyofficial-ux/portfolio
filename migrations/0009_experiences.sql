CREATE TABLE IF NOT EXISTS experiences (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  slug TEXT NOT NULL UNIQUE,
  role_en TEXT NOT NULL,
  role_ar TEXT DEFAULT '',
  company_en TEXT DEFAULT '',
  company_ar TEXT DEFAULT '',
  employment_type_en TEXT DEFAULT '',
  employment_type_ar TEXT DEFAULT '',
  location_en TEXT DEFAULT '',
  location_ar TEXT DEFAULT '',
  date_en TEXT DEFAULT '',
  date_ar TEXT DEFAULT '',
  desc_en TEXT DEFAULT '',
  desc_ar TEXT DEFAULT '',
  company_url TEXT DEFAULT '',
  logo_url TEXT DEFAULT '',
  published INTEGER NOT NULL DEFAULT 1,
  sort_order INTEGER NOT NULL DEFAULT 0
);
CREATE INDEX IF NOT EXISTS idx_experiences_published_order ON experiences(published, sort_order, id);

INSERT OR IGNORE INTO experiences (slug,role_en,role_ar,company_en,company_ar,employment_type_en,employment_type_ar,date_en,date_ar,company_url,published,sort_order) VALUES ('cib-internship-trainee','Internship Trainee','متدرب','CIB Egypt','البنك التجاري الدولي - مصر','Internship','تدريب','Jul 2025 – Aug 2025 · 2 mos','يوليو 2025 – أغسطس 2025 · شهران','https://www.cibeg.com/',1,0);
