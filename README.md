# Bismark Guide
## Usage
1. Clone the repository.
```bash
git clone https://github.com/meruila/bismark-sample.git
```
2. Pull a Docker image of Bismark using the command below. [[Source](https://quay.io/repository/biocontainers/bismark?tab=info)].
```bash
docker pull quay.io/biocontainers/bismark:0.23.1--hdfd78af_0
```
3. The image can be tested using `docker run`. Examples:
```bash
docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark --help
docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark_genome_preparation [reference_genome_folder]
```
4. In the `scripts` folder, try the wrapper script.
```bash
./main.sh [reference_genome_folder] [reads_folder]
```
## Notes
To test with GRCh38, use this link and download its assembly from there: https://www.ncbi.nlm.nih.gov/assembly/GCF_000001405.40