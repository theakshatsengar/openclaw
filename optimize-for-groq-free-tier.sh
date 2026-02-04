#!/bin/bash
echo "Optimizing OpenClaw for Groq Free Tier..."

# Set the 8B model as default (best for free tier)
pnpm openclaw config set agents.defaults.model groq/llama-3.1-8b-instant

# Set reasonable token limits
pnpm openclaw config set agents.defaults.maxTokens 4096

# Configure fallback models (all free-tier friendly)
pnpm openclaw config set agents.defaults.model.fallbacks '["groq/llama3-8b-8192", "groq/gemma-7b-it", "groq/gemma2-9b-it"]'

# Show current configuration
echo "Current model configuration:"
pnpm openclaw config get agents.defaults.model

echo "Optimization complete! Use these models for free tier:"
echo "- groq/llama-3.1-8b-instant (recommended)"
echo "- groq/llama3-8b-8192"
echo "- groq/gemma-7b-it"
echo "- groq/gemma2-9b-it"