.PHONY: install dev test lint format backtest train serve dashboard

install:
	pip install -e .

dev:
	pip install -e ".[dev,notebook]"

test:
	pytest --cov=. --cov-report=term-missing

lint:
	ruff check .

format:
	black .

backtest:
	python scripts/run_backtest.py

train:
	python scripts/train_model.py

serve:
	python scripts/start_scoring_service.py

dashboard:
	streamlit run dashboard/app.py
