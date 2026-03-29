# Latent-Market

> Market microstructure learning engine — backtesting, pattern recognition, and ML model lifecycle pipeline.

## Architecture

```
data layer    →  market_simulator · etl_pipeline · feature_store · config_loader
strategy      →  market_maker · stat_arb · momentum · options_pricer
backtester    →  engine · order_book · pnl
ml layer      →  trainer · registry · scoring · optimizer
risk          →  monitor · metrics
reporting     →  notebooks · dashboard (Streamlit)
```

## Quickstart

```bash
# Install
make dev

# Run a backtest
make backtest

# Train a model
make train

# Start scoring REST service
make serve

# Launch dashboard
make dashboard
```

## IBM z/OS ML Parallels

| Orbit module      | z/OS ML equivalent         |
|-------------------|----------------------------|
| etl_pipeline      | SparkML ETL jobs           |
| ml/trainer        | ONNX model training        |
| ml/scoring        | REST scoring endpoint      |
| ml/registry       | Model registry / metadata  |
| reporting         | JupyterHub notebooks       |

## Project Layout

```
orbit/
├── config/          # YAML settings + logging
├── data/            # Simulator, ETL, feature store
├── strategies/      # Market making, stat arb, momentum, options
├── backtester/      # Order matching, PnL, slippage
├── ml/
│   ├── trainer/     # Model training + ONNX export
│   ├── registry/    # Versioned artifact store
│   └── scoring/     # FastAPI REST endpoint
├── risk/            # Drawdown, Sharpe, VaR
├── reporting/       # Report builder
├── dashboard/       # Streamlit app
├── notebooks/       # Jupyter analysis
├── scripts/         # CLI entrypoints
└── tests/           # Unit + integration
```
