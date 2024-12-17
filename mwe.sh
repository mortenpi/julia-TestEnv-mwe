SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}"

rm -vf MainEnv/Manifest.toml
rm -vf DependentEnv/Manifest.toml

# Works:
julia --project=MainEnv -e 'using Pkg; Pkg.test()'

# Doesn't work:
julia --project testenv-activate.jl
